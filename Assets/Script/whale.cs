using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class whale : MonoBehaviour {

	// Use this for initialization
	float spawnX;
	void Start () {
		spawnX = transform.position.x;
		print(spawnX);
	}

	// Update is called once per frame
	void Update () {
		transform.Translate (1.0f, 0, 0);
		if (transform.position.x > (spawnX + 1000)) {
			transform.position = new Vector3 (spawnX, transform.position.y, transform.position.z);
		}
	}
}