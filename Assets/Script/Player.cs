using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour {

	// Use this for initialization
	Light light;
	Light directional;
	void Start () {
		light = transform.Find ("light").GetComponent<Light> ();
		light.enabled = false;
		directional = GameObject.Find ("Directional Light").GetComponent<Light> ();
	}
	float moveForward = 0;
	bool accelerate = false;
	// Update is called once per frame

	Color azure = new Color (.32f, .75f, .81f);
	Color night = new Color (.03f, .33f, .37f);
	bool fogType = true;

	void Light () {

		if (Input.GetKeyUp (KeyCode.F)) {
			light.enabled = !light.enabled;
		}

		if (Input.GetKeyUp (KeyCode.Alpha1)) {
			RenderSettings.fog = !RenderSettings.fog;
		}
		if (Input.GetKeyUp (KeyCode.Alpha2)) {
			fogType = !fogType;
			if (fogType) {
				RenderSettings.fogColor = azure;
				Camera.main.backgroundColor = azure;
			} else {
				RenderSettings.fogColor = night;
				Camera.main.backgroundColor = night;

			}

		}
		if (Input.GetKeyUp (KeyCode.Alpha3)) {

			if (directional.intensity == 1.0f) {
				directional.intensity = 0.3f;
			} else {
				directional.intensity = 1.0f;
			}

		}
		if (Input.GetKeyUp (KeyCode.Q)) {

			if (maxSpeed == 2.0f) {
				maxSpeed = 0.3f;
			} else {
				maxSpeed = 2.0f;
			}

		}

	}
	float maxSpeed = 0.3f;
	void Movement () {
		if (Input.GetKey (KeyCode.LeftShift)) {
			accelerate = true;

		} else {
			accelerate = false;

		}

		if (accelerate) {
			moveForward -= (moveForward - maxSpeed) / 10;
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