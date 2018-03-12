
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
		physicTimeStep = 0.05f;

		rigidbody = GetComponent<Rigidbody>();

		var pos = spline.getPoint( time + physicTimeStep * .5f );

		rigidbody.transform.position = pos;

		var forward = (spline.getPoint( time + physicTimeStep ) - pos ).normalized;

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

		var currSplinePoint = spline.getPoint( time );
		var nextSplinePoint = spline.getPoint( time + physicTimeStep );
		var splineTangent = ( nextSplinePoint - currSplinePoint ).normalized;

		var postToPrevSplinePoint = currSplinePoint - rigidbody.position;

		var posToNextSplinePoint = nextSplinePoint - rigidbody.position;

		var postToNextDOTTangent = Vector3.Dot( posToNextSplinePoint.normalized, splineTangent.normalized );

		var rightDOTposToNextSplinePoint = Vector3.Dot( transform.right, posToNextSplinePoint.normalized );

		var forwardDOTPosToNextSplinePoint = Vector3.Dot( transform.forward, posToNextSplinePoint.normalized);

		var torqueForce = 0.5f;
		
		rigidbody.AddRelativeTorque( Vector3.up * torqueForce * (rightDOTposToNextSplinePoint) );

		var maxSpeed = 5.0f;

		var velocityDot = Vector3.Dot( rigidbody.velocity.normalized, posToNextSplinePoint.normalized );

		if( velocityDot < 0.5f ) {

			rigidbody.AddForce( posToNextSplinePoint.normalized * velocityDot);

		}

		if( rigidbody.velocity.magnitude < maxSpeed ) {

			rigidbody.AddRelativeForce( Vector3.forward );

		}

		if( posToNextSplinePoint.sqrMagnitude < postToPrevSplinePoint.sqrMagnitude ) {
			
			time = (time + .001f) % 1;

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
