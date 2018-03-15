using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlockAgent : MonoBehaviour {

	public Transform limitPoint;

	float outsideLimit = 250.0f;

	[HideInInspector]
	public float wallLimit = 200.0f;

	float maxSpeed = 25.0f;
	float thrust = 25.0f;
	float torqueStrength = 1000.5f;
	float wallTorqueStrength = 40.0f;

	[HideInInspector]
	public Rigidbody body;

	string[] layers = new string[] {
		"Floor",
		"Walls"
	};

	int layerMask;

	Transform camera;

	FlockAgent[] flockAgents;

	void Start () {

		wallLimit = 500.0f;

		// Time.timeScale = 5.0f;		
		body = GetComponent<Rigidbody> ();
		layerMask = LayerMask.GetMask (layers);
		camera = Camera.main.transform;

		flockAgents = GameObject.FindObjectsOfType<FlockAgent> ();

	}

	void FixedUpdate () {

		if (body.velocity.magnitude < maxSpeed) {

			body.AddRelativeForce (Vector3.forward * thrust);

		} else {

			body.AddRelativeForce (-Vector3.forward * thrust);

		}

		// SceneConstrain();

		Flocking();
		WallConstrain ();

	}

	void SceneConstrain () {

		var vectorFromCenter = transform.position - limitPoint.position;

		var distanceFromCenter = vectorFromCenter.magnitude;

		// if it is outside the limit
		if (distanceFromCenter > outsideLimit) {

			var dotToCenter = Vector3.Dot (
				body.velocity.normalized,
				vectorFromCenter.normalized
			);

			var rightDot = Vector3.Dot (
				transform.right, -vectorFromCenter.normalized
			);

			var torque = Vector3.up * torqueStrength * rightDot;

			body.AddRelativeTorque (torque);

			// // if its moving outside the limit
			// if( dotToCenter > 0 ) {

			// }

			// You are too far!

		}

	}

	void WallConstrain () {

		var frontWallHit = getWallPointAt (body.velocity.normalized);

		var wallCollisionPoint = frontWallHit.point;

		var wallCollisionVector = wallCollisionPoint - transform.position;

		var wallCollisionDistance = wallCollisionVector.magnitude;

		// if( wallCollisionDistance < wallLimit  && wallCollisionDistance != .0f ) {

		var crossRight = Vector3.Cross (body.velocity.normalized, transform.up);

		var rightWallHit = getWallPointAt (body.velocity.normalized * 1.5f - crossRight.normalized);
		var leftWallHit = getWallPointAt (body.velocity.normalized * 1.5f + crossRight.normalized);

		var rightWall = rightWallHit.point;
		var leftWall = leftWallHit.point;

		var rightWallVector = rightWall - transform.position;
		var leftWallVector = leftWall - transform.position;

		var torque = Vector3.up * wallTorqueStrength / wallCollisionDistance;

		if (rightWallVector.sqrMagnitude < leftWallVector.sqrMagnitude) {

			torque = -torque;

			// var targetVelocity = Quaternion.FromToRotation( body.velocity, crossRight) * body.velocity;
			// body.velocity = Vector3.Slerp( body.velocity, targetVelocity, Time.fixedDeltaTime * 5.0f );
			body.AddForce ((crossRight * 400.0f) / wallCollisionDistance);

		} else {

			body.AddForce (-(crossRight * 400.0f) / wallCollisionDistance);
			// var targetVelocity = Quaternion.FromToRotation( body.velocity, - crossRight) * body.velocity;
			// body.velocity = Vector3.Slerp( body.velocity, targetVelocity, Time.fixedDeltaTime * 5.0f );

		}

		body.AddRelativeTorque (torque * 0.75f);

		// body.transform.forward = body.velocity.normalized;

		// }

	}

	public RaycastHit getWallPointAt (Vector3 direction) {

		RaycastHit hit;
		var end = transform.position + direction * 9999.9f;
		Physics.Linecast (transform.position, end, out hit, layerMask);

		return hit;

	}

	void Flocking () {

		var separationTarget = 7.0f;
		var visibilityRange = 30.0f;
		var separationForce = 10.0f;
		var alignmentForce = 10.0f;
		var cohesionForce = 50.0f;

		foreach (var agent in flockAgents) {

			if (agent == this) continue;

			var toAgentVector = agent.transform.position - transform.position;

			var agentDist = toAgentVector.magnitude;

			if (agentDist < visibilityRange) {

				if (separationTarget > agentDist) {
					// Separation
					body.AddForce (-toAgentVector.normalized * separationForce);
				} else {
					body.AddForce (toAgentVector.normalized * alignmentForce);
					// Alignment

				}
				// Cohesion 

			}

		}

	}

}