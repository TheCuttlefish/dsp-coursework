using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlockAgent : MonoBehaviour {

	public Transform limitPoint;

	float limit = 250.0f;

	
	Rigidbody rigidbody;

	void Start () {
		
		rigidbody = GetComponent<Rigidbody>();
		
	}

	void FixedUpdate() {

		var distanceToCenter = (transform.position - limitPoint.position).magnitude;

		if( distanceToCenter > limit ) {

			// You are too far!

		}

	}
}
