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

		var frontWallHit = obj.getWallPointAt( obj.body.velocity.normalized );
		var rightWallHit = obj.getWallPointAt( obj.body.velocity.normalized * 1.5f - crossRight.normalized );
		var leftWallHit = obj.getWallPointAt( obj.body.velocity.normalized * 1.5f + crossRight.normalized );

		var wallCollisionPoint = frontWallHit.point;
		var rightWall = rightWallHit.point;
		var leftWall = leftWallHit.point;

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

		var alpha = 0.0f;

		foreach( var item in list ){

			alpha += 1.0f / 3.0f;

			color.r = 1.0f - alpha;

			Debug.DrawLine( item.start, item.end, color );

		}

		Debug.Log( "angularVelocity: " + obj.body.angularVelocity.magnitude );

	}

}

struct VectorDebug{

	public Vector3 start;
	public Vector3 end;

	public Vector3 vector{
		get { return start - end; }
	}

}