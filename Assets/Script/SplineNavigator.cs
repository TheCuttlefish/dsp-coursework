
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SplineNavigator : MonoBehaviour {

	public CatmullRomSpline spline;

	[Range(1, 0.01f)]
	public float speedFactor = 0.1f;

	[HideInInspector]
	public float time;

	public bool usePhysics = true;

	[HideInInspector]
	public Rigidbody rigidbody;

	[HideInInspector]
	public float physicTimeStep;

	void Start() {

		time = 0.0f;
		physicTimeStep = 0.01f;

		rigidbody = GetComponent<Rigidbody>();

		var pos = spline.getPoint( time );

		rigidbody.transform.position = pos;

		var forward = (spline.getPoint( time + 0.01f ) - pos ).normalized;

		rigidbody.transform.forward = forward;

	}
	
	void FixedUpdate() {

		if( usePhysics ) {

			UpdatePhysics();

		} else {

			UpdateTransform();

		}

	}

	void UpdatePhysics() {

		print( time );

		var maxSpeed = 5.0f;

		if( rigidbody.velocity.magnitude < maxSpeed ) {

			rigidbody.AddRelativeForce( Vector3.forward );

		}

		var currSplinePoint = spline.getPoint( time );
		var nextSplinePoint = spline.getPoint( time + physicTimeStep );
		var splineTangent = ( nextSplinePoint - currSplinePoint ).normalized;

		var posToNextSplinePoint = nextSplinePoint - rigidbody.position;

		var postToNextDOTTangent = Vector3.Dot( posToNextSplinePoint.normalized, splineTangent.normalized );

		var rightDOTposToNextSplinePoint = Vector3.Dot( transform.right, posToNextSplinePoint );

		var forwardDOTPosToNextSplinePoint = Vector3.Dot( transform.forward, posToNextSplinePoint.normalized);

		// print( 
		// 	"postToNextDotTangent: " + postToNextDOTTangent.ToString() 
		// 	+ " - rightDotTangent: " + rightDOTTangent.ToString() 
		// );

		var torqueForce = 1.0f;
		
		rigidbody.AddRelativeTorque( Vector3.up * torqueForce * (rightDOTposToNextSplinePoint) );

		if( forwardDOTPosToNextSplinePoint < 0.9f ) {

			// // if is on the right
			// if( rightDOTTangent > 0.0f ) {


			// // if is on the left
			// } else {

			// 	rigidbody.AddRelativeTorque( - Vector3.up * torqueForce );

			// }

		}

		var minDistance = 5.0f;

		if( posToNextSplinePoint.magnitude < minDistance ) {
			
			time = (time + physicTimeStep) % 1;

		}

	}

	void UpdateTransform() {

		time = (time + Time.fixedDeltaTime * speedFactor) % 1;
		var pos = spline.getPoint( time );
		var forward = (spline.getPoint( time + 0.01f ) - pos ).normalized;

		transform.position = pos;

		transform.forward = forward;

	}
}
