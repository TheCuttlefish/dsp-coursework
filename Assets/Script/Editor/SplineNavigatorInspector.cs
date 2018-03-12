using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(SplineNavigator))]
public class SplineNavigatorInspector : Editor {

	void OnSceneGUI() {	

		var obj = (SplineNavigator) target;

		var pos = obj.transform.position;

		var currSplinePoint = obj.spline.getPoint( obj.time );
		var nextSplinePoint = obj.spline.getPoint( obj.time + obj.physicTimeStep );

		Debug.DrawLine( pos, currSplinePoint, Color.green );
		Debug.DrawLine( pos, nextSplinePoint, Color.white );

		if ( obj.rigidbody != null ) {

			Debug.DrawLine( pos, pos + obj.rigidbody.velocity, Color.cyan );

		}

	}

}
