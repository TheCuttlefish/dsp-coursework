using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlockAgent : MonoBehaviour {

	public Transform limitPoint;

	float outsideLimit = 250.0f;

	[HideInInspector]
	public float wallLimit = 200.0f;

	float maxSpeed = 5.0f;
	float torqueStrength = 0.1f;
	float wallTorqueStrength = 4.0f;
	
	[HideInInspector]
	public Rigidbody body;

	string[] layers = new string[] {
		"Floor",
		"Walls"
	};

	int layerMask;

	Transform camera;

	void Start () {

		wallLimit = 500.0f;

		Time.timeScale = 5.0f;		
		body = GetComponent<Rigidbody>();
		layerMask = LayerMask.GetMask( layers );
		camera = Camera.main.transform;
		
	}

	void FixedUpdate() {

		if( body.velocity.magnitude < maxSpeed ) {

			body.AddRelativeForce( Vector3.forward, ForceMode.Impulse );

		}

		SceneConstrain();

		WallConstrain();

	}

	void SceneConstrain() {

		var vectorFromCenter = transform.position - limitPoint.position;

		var distanceFromCenter = vectorFromCenter.magnitude;

		// if it is outside the limit
		if( distanceFromCenter > outsideLimit ) {

			var dotToCenter = Vector3.Dot( 
				body.velocity.normalized, 
				vectorFromCenter.normalized 
			);

			var rightDot = Vector3.Dot( 
				transform.right, 
				- vectorFromCenter.normalized 
			);

			var torque = Vector3.up * torqueStrength * rightDot;

			body.AddRelativeTorque( torque );

			// // if its moving outside the limit
			// if( dotToCenter > 0 ) {



			// }

			// You are too far!

		}

	}

	void WallConstrain() {

		var wallCollisionPoint = getWallPointAt(body.velocity.normalized);

		var wallCollisionVector = wallCollisionPoint - transform.position;

		var wallCollisionDistance = wallCollisionVector.magnitude;

		if( wallCollisionDistance < wallLimit  && wallCollisionDistance != .0f ) {

			var crossRight = Vector3.Cross( body.velocity.normalized, transform.up );

			var rightWall = getWallPointAt( body.velocity.normalized * 1.5f + crossRight.normalized );
			var leftWall = getWallPointAt( body.velocity.normalized * 1.5f - crossRight.normalized );

			var rightWallVector = rightWall - transform.position;
			var leftWallVector = leftWall - transform.position;

			var torque = Vector3.up * wallTorqueStrength / wallCollisionDistance;

			if( rightWallVector.sqrMagnitude > leftWallVector.sqrMagnitude ) {
				
				torque = - torque;

			}

			body.AddRelativeTorque( torque );

		}

	}

	public Vector3 getWallPointAt( Vector3 direction ) {

		RaycastHit hit;
		var end = transform.position + direction * 9999.9f;
		Physics.Linecast( transform.position, end, out hit, layerMask);

		if( hit.collider != null ) {

			return hit.point;

		}

		return end;
		
	}

}
