using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OccludedSoundEmitter : MonoBehaviour {

	[FMODUnity.EventRef]
	public string fmodEventPath;

	// Other positions to check if the object is occluded, usefull for big objects.
	public Transform[] anchors;
	
	Transform mainCamera;

	FMOD.Studio.ParameterInstance fmodIsOccluded;

	float isOccludedValue = 1.0f;

	string[] layers = new string[] {
		"Floor",
		"Walls",
		"Camera"
	};

	void Start() {

		mainCamera = Camera.main.transform;

		var e = FMODUnity.RuntimeManager.CreateInstance(fmodEventPath);

		e.getParameter("isOccluded", out fmodIsOccluded);

		e.start();

		FMODUnity.RuntimeManager.AttachInstanceToGameObject( e, transform, GetComponent<Rigidbody>() );
		
		e.release();
	}

	void FixedUpdate() {

		bool isOccluded = IsOccluded(transform.position);

		if( isOccluded ) {

			// If it is occluded, check also if the other anchors are occluded too.

			foreach( var anchor in anchors ) {

				isOccluded = IsOccluded(anchor.position);

				if( ! isOccluded ) {
					break;
				}

			}

		}
		
		if( isOccluded ) {

			isOccludedValue = Mathf.Lerp(isOccludedValue, 1.0f, Time.fixedDeltaTime);

		} else {

			isOccludedValue = Mathf.Lerp(isOccludedValue, 0.0f, Time.fixedDeltaTime);

		}

		print( isOccludedValue );
		
		fmodIsOccluded.setValue( isOccludedValue );

		var renderer = transform.parent.GetComponent<MeshRenderer>();

		var material = renderer.material;

		var color = material.color;

		color.g = .0f; //1.0f - isOccludedValue;
		color.r = .0f; //1.0f - isOccludedValue;
		color.b = .0f; //1.0f - isOccludedValue;

		material.SetColor( "Color", color );

		renderer.material = material;

	}

	bool IsOccluded( Vector3 anchor ) {

		RaycastHit hit;	
		var layerMask = LayerMask.GetMask( layers );

		Physics.Linecast( transform.position, mainCamera.position, out hit, layerMask);

		if( hit.collider != null && hit.collider.transform == mainCamera ) {

			return false;

		} else {
			
			return true;

		}

	}
}
