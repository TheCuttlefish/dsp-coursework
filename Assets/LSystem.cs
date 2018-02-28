using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LSystem : MonoBehaviour {

	// Use this for initialization
	public int iteration = 2;
	string tree = "a"; //tree - with axiom a
	string a = "a"; //branch
	string b = "b"; // leaf

	void Start () {
		Iteration ();

		//Draw ();
	}

	void Iteration () {
		while (iteration > 0) {
			string tempTree = "";

			for (int i = 0; i < tree.Length; i++) {
				if (tree.Substring (i, 1) == "a") {
					tempTree = string.Concat (tempTree, "a[b[b]]"); //ab[bb]
				}
				if (tree.Substring (i, 1) == "b") {
					tempTree = string.Concat (tempTree, "a[bbb]");//a[bb]
				}
				if (tree.Substring (i, 1) == "[" || tree.Substring (i, 1) == "]") {
					tempTree = string.Concat (tempTree, tree.Substring (i, 1));
				}
			}
			tree = tempTree;
			iteration--;
			//print (tree + " " + (iteration));
		}
		print (tree + " " + (iteration));

	}

	public Transform branch;
	public Transform leaf;

	Vector3 randomAngle;
	public float angle = 100;
	Vector3 spawnPoint;
	List<Vector3> positions = new List<Vector3> ();
	void Draw () {

		positions.Add (new Vector3 (0, 0, 0)); // push
		//positions.RemoveAt (positions.Count - 1); // pop
		for (int i = 0; i < tree.Length; i++) {

			if (tree.Substring (i, 1) == "a") {
				//print (" branch");

				randomAngle = new Vector3 (Random.Range (-angle, angle), Random.Range (-angle, angle), Random.Range (-angle, angle));

				var newBranch = GameObject.Instantiate (branch, positions[positions.Count - 1], Quaternion.Euler (randomAngle));
				spawnPoint = newBranch.transform.Find ("spawnPoint").transform.position;
				//positions.Add (spawnPoint); // push
				//print (spawnPoint + "sppawn p");
			}
			if (tree.Substring (i, 1) == "b") {
				//print (" leaf");
				randomAngle = new Vector3 (Random.Range (-angle, angle), Random.Range (-angle, angle), Random.Range (-angle, angle));

				Instantiate (leaf, positions[positions.Count - 1], Quaternion.Euler (randomAngle));
			}
			if (tree.Substring (i, 1) == "[") {
				//print (" push");
				positions.Add (spawnPoint); // push
			}
			if (tree.Substring (i, 1) == "]") {
				//print (" pop");
				positions.RemoveAt (positions.Count - 1); // pop
			}

		}

	}

	int i = 0;
	bool setPosOnce = false;

	void DrawSlow () {
		if (!setPosOnce) {
			positions.Add (new Vector3 (0, 0, 0)); // push
			setPosOnce = true;
		}

		//steps go here!

		//positions.RemoveAt (positions.Count - 1); // pop
		if (i < tree.Length) {

			if (tree.Substring (i, 1) == "a") {
				//print (" branch");

				randomAngle = new Vector3 (Random.Range (-angle, angle), Random.Range (-angle, angle), Random.Range (-angle, angle));

				var newBranch = GameObject.Instantiate (branch, positions[positions.Count - 1], Quaternion.Euler (randomAngle));
				spawnPoint = newBranch.transform.Find ("spawnPoint").transform.position;
				//positions.Add (spawnPoint); // push
				//print (spawnPoint + "sppawn p");
			}
			if (tree.Substring (i, 1) == "b") {
				//print (" leaf");
				randomAngle = new Vector3 (Random.Range (-angle, angle), Random.Range (-angle, angle), Random.Range (-angle, angle));

				Instantiate (leaf, positions[positions.Count - 1], Quaternion.Euler (randomAngle));
			}
			if (tree.Substring (i, 1) == "[") {
				//print (" push");
				positions.Add (spawnPoint); // push
			}
			if (tree.Substring (i, 1) == "]") {
				//print (" pop");
				positions.RemoveAt (positions.Count - 1); // pop
			}

			//
			i++;

		}

	}

	// Update is called once per frame
	void Update () {
		DrawSlow ();
		DrawSlow ();
		DrawSlow ();
		DrawSlow ();
		DrawSlow ();
	}

}