using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Wrap : MonoBehaviour {

	Rigidbody rigidbody;

	bool usePhysics = false;

	// Use this for initialization
	void Start () {

		rigidbody = GetComponent<Rigidbody>();

		if(!usePhysics) {

			rigidbody.isKinematic = true;

		} else {

			rigidbody.isKinematic = false;

		}
		
	}
	
	void FixedUpdate() {

		if( usePhysics ) {

			PhysicsUpdate();
		
		} else {

			TransformUpdate();

		}
	}

	void TransformUpdate() {

		var pos = transform.position;
		pos.y += -90.8f * Time.fixedDeltaTime;

		if( transform.position.y < -10.0f ) {

			pos.y = 20.0f;

		}

		transform.position = pos;

	}

	void PhysicsUpdate() {

		if( rigidbody.velocity.y < -90.8f ) {

			rigidbody.AddForce(0.0f, 10.0f, 0.0f);

		}

		if( rigidbody.transform.position.y < -10.0f ) {

			var position = rigidbody.transform.position;

			position.y = 20.0f;

			rigidbody.MovePosition(position);

		}

	}
}
