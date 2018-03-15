using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.Linq;

[CustomEditor(typeof(FlockAgent))]
public class FlockAgentInspector : Editor {	
	
	void OnSceneGUI() {			

		var obj = (FlockAgent) target;

		if( obj.body == null ) return;

		var crossRight = Vector3.Cross( obj.body.velocity.normalized, obj.transform.up );

		var wallCollisionPoint = obj.getWallPointAt( obj.body.velocity.normalized );
		var rightWall = obj.getWallPointAt( obj.body.velocity.normalized * 1.5f + crossRight.normalized );
		var leftWall = obj.getWallPointAt( obj.body.velocity.normalized * 1.5f - crossRight.normalized );

		VectorDebug forward = new VectorDebug {
			start = obj.transform.position,
			end = rightWall
		};
		VectorDebug right = new VectorDebug {
			start = obj.transform.position,
			end = wallCollisionPoint
		};
		VectorDebug left = new VectorDebug {
			start = obj.transform.position,
			end = leftWall
		};

		var color = Color.green;

		if( forward.vector.magnitude < obj.wallLimit ) {

			color = Color.red;

		}

		List<VectorDebug> list = new List<VectorDebug>(){
			forward, left, right
		};

		list = list.OrderByDescending( a => a.vector.sqrMagnitude).ToList();

		foreach( var item in list ){

			color.a *= 0.5f;

			Debug.DrawLine( item.start, item.end, color );

		}

	}

}

struct VectorDebug{

	public Vector3 start;
	public Vector3 end;

	public Vector3 vector{
		get { return start - end; }
	}

}