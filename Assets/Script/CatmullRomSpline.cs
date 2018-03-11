using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CatmullRomSpline : MonoBehaviour {
	
	public bool isLooping = true;
	
	void OnDrawGizmos () {
		Gizmos.color = Color.red;
		
		for (int i = 0; i < transform.childCount; i++) {
			
			if ((i == 0 || i == transform.childCount - 2 || i == transform.childCount - 1) && !isLooping) {
				continue;
			}

			DisplayCatmullRomSpline (i);
		}
	}
	
	void DisplayCatmullRomSpline (int pos) {
		
		Vector3 p0 = transform.GetChild( (transform.childCount + pos - 1) % transform.childCount ).position;
		Vector3 p1 = transform.GetChild(pos).position;
		Vector3 p2 = transform.GetChild( (pos + 1) % transform.childCount ).position;
		Vector3 p3 = transform.GetChild( (pos + 2) % transform.childCount ).position;
		
		Vector3 lastPos = p1;
		
		float resolution = 0.2f;
		
		int loops = Mathf.FloorToInt (1f / resolution);

		for (int i = 1; i <= loops; i++) {
			
			float t = i * resolution;
			
			Vector3 newPos = GetCatmullRomPosition (t, p0, p1, p2, p3);
			
			Gizmos.DrawLine (lastPos, newPos);
			
			lastPos = newPos;
		}
	}
	
	Vector3 GetCatmullRomPosition (float t, Vector3 p0, Vector3 p1, Vector3 p2, Vector3 p3) {

		Vector3 a = 2f * p1;
		Vector3 b = p2 - p0;
		Vector3 c = 2f * p0 - 5f * p1 + 4f * p2 - p3;
		Vector3 d = -p0 + 3f * p1 - 3f * p2 + p3;
		Vector3 pos = 0.5f * (a + (b * t) + (c * t * t) + (d * t * t * t));

		return pos;

	}

}