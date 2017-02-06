using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement3 : MonoBehaviour {

	public Transform pointG;
	public Transform pointH;

	public float percent = 0;
	public float movementSpeed = 20;
	float timer = 2f;

	// Use this for initialization
	void Start () {

		pointG = GameObject.Find ("pointG").transform;
		pointH = GameObject.Find ("pointH").transform;

	}

	// Update is called once per frame
	void Update () {

		timer -= Time.deltaTime;

		if (timer < 0) {


			transform.position = Vector3.Lerp (pointG.position, pointH.position, percent);


			percent = percent + Time.deltaTime / movementSpeed;



		}
		if (percent > 1) {

			Destroy (gameObject);
		}


	}
}