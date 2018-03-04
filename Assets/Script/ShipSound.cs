using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShipSound : MonoBehaviour {

	[FMODUnity.EventRef]
	public string fmodEventPath;

	[Range(0.0f, 1.0f)]
	public float speed = 0.0f;

	FMOD.Studio.ParameterInstance fmodShipSpeed;

	Player player;

	void Start() {

		var e = FMODUnity.RuntimeManager.CreateInstance(fmodEventPath);

		e.getParameter("shipSpeed", out fmodShipSpeed);

		e.start();
		e.release();

		player = GetComponent<Player>();

	}

	void FixedUpdate() {

		speed = player.moveForward / player.maxSpeed;
		fmodShipSpeed.setValue( speed * .5f );

	}

}