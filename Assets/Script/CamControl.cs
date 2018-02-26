using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CamControl : MonoBehaviour {

	// Use this for initialization

	void Start () {
		
	}
	public Transform target;
	public Transform player;

	// Update is called once per frame
	void FixedUpdate () {
		transform.position = Vector3.Lerp (transform.position, target.position, 0.5f);
		float step = 200.0f * Time.deltaTime;
		Vector3 newDir = Vector3.RotateTowards (transform.forward,player.transform.forward, step, 2.0F);
		Debug.DrawRay (transform.position, newDir, Color.red);
		transform.rotation = Quaternion.LookRotation (newDir);
	}
}