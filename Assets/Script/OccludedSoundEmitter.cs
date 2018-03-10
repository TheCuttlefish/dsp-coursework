using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class OccludedSoundEmitter : MonoBehaviour {

	[FMODUnity.EventRef]
	public string fmodEventPath;

	// Other positions to check if the object is occluded, usefull for big objects.
	public Transform[] anchors;
	
	Transform mainCamera;

	FMOD.Studio.EventInstance fmodEvent;

	FMOD.Studio.ParameterInstance fmodIsOccluded;

	float isOccludedValue = 1.0f;

	string[] layers = new string[] {
		"Floor",
		"Walls",
		"Camera"
	};
	
	float occludedTimer = 0.0f;

	float occludedRestartTime = 2.0f;

	UnityEvent onOcclusionChange = new UnityEvent();

	void Start() {

		mainCamera = Camera.main.transform;

		fmodEvent = FMODUnity.RuntimeManager.CreateInstance(fmodEventPath);

		fmodEvent.getParameter("isOccluded", out fmodIsOccluded);

		fmodEvent.start();

		FMODUnity.RuntimeManager.AttachInstanceToGameObject( fmodEvent, transform, GetComponent<Rigidbody>() );
		
		fmodEvent.release();
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
			occludedTimer +=  Time.fixedDeltaTime;

		} else {

			isOccludedValue = Mathf.Lerp(isOccludedValue, 0.0f, Time.fixedDeltaTime);
			occludedTimer = 0.0f;

		}

		if( occludedTimer >= occludedRestartTime ) {
			
			fmodEvent.setTimelinePosition(0);

		}
		
		fmodIsOccluded.setValue( isOccludedValue );

		onOcclusionChange.Invoke();

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
