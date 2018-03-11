
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SplineNavigator : MonoBehaviour {

	public CatmullRomSpline spline;

	[Range(1, 0.01f)]
	public float speedFactor = 0.1f;

	float time = 0.0f;
	
	void FixedUpdate() {

		time = (time + Time.fixedDeltaTime * speedFactor) % 1;

		transform.position = spline.getPoint( time );

		transform.forward = (spline.getPoint( time + 0.01f ) - transform.position).normalized;

	}
}
