using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FogControl : MonoBehaviour {

	public Color areaColour;
	// Use this for initialization
	void Start () {
			GetComponent<MeshRenderer>().enabled=false;
	}

	// Update is called once per frame
	void Update () {

	}

	void OnTriggerEnter (Collider other) {

		if (other.name == "player") {
			other.GetComponent<Player>().ChangeLight(areaColour);
			//RenderSettings.fogColor = areaColour;
			//Camera.main.backgroundColor = areaColour;

		};
	}
}