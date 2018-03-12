using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(OccludedSoundEmitter))]
public class OccludedSoundEmitterInspector : Editor  {

	bool showOcclussionRay = false;
	
	void OnSceneGUI() {	

		if ( ! showOcclussionRay ) return;

		var targetObject = (OccludedSoundEmitter) target;
		Debug.DrawLine( targetObject.transform.position, Camera.main.transform.position, Color.red );

		foreach( var anchor in targetObject.anchors ) {

			Debug.DrawLine( anchor.position, Camera.main.transform.position, Color.green );
		
		}
		
	}

}
