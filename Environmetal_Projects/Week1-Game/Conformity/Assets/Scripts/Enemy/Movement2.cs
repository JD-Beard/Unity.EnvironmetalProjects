using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement2 : MonoBehaviour {

	public Transform pointE;
	public Transform pointF;

	public float percent = 0;
	public float movementSpeed = 20;
	float timer = 2f;

	// Use this for initialization
	void Start () {

		pointE = GameObject.Find ("pointE").transform;
		pointF = GameObject.Find ("pointF").transform;

	}

	// Update is called once per frame
	void Update () {

		timer -= Time.deltaTime;

		if (timer < 0) {


			transform.position = Vector3.Lerp (pointE.position, pointF.position, percent);


			percent = percent + Time.deltaTime / movementSpeed;



		}


		if (percent > 1) {

			Destroy (gameObject);
		}

	}
}