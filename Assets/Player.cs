using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour {

		// Use this for initialization
		Light light;
		void Start () {
			light = transform.Find ("light").GetComponent<Light> ();
			light.enabled = false;
		}
		float moveForward = 0;
		bool accelerate = false;
		// Update is called once per frame
		void Light () {

			if (Input.GetKeyUp (KeyCode.F)) {
				light.enabled = !light.enabled;
			}
		}


		void Movement () {
			if (Input.GetKey (KeyCode.LeftShift)) {
				accelerate = true;

			} else {
				accelerate = false;

			}

			if (accelerate) {
				moveForward -= (moveForward - 0.3f) / 10;
			} else {
				moveForward -= (moveForward - 0) / 50;
			}

			transform.Translate (0, 0, moveForward, Space.Self);
			transform.Rotate (Input.GetAxis ("Vertical") * 2.0f, Input.GetAxis ("Horizontal") * 3.0f, 0);
			//correction
			transform.Rotate (Vector3.Dot (Vector3.up, transform.forward), 0, Vector3.Dot (Vector3.up, -transform.right));
			//transform.Rotate (0,Vector3.Dot (Vector3.forward, transform.right), 0); // - code for left right correction
			}
			void Update () {
				Light ();
			}
			void FixedUpdate () {
				Movement ();

			}
		}