using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement1 : MonoBehaviour {

	public Transform pointC;
	public Transform pointD;

	public float percent = 0;
	public float movementSpeed = 20;
	float timer = 2f;

	// Use this for initialization
	void Start () {

		pointC = GameObject.Find ("pointC").transform;
		pointD = GameObject.Find ("pointD").transform;

	}

	// Update is called once per frame
	void Update () {

		timer -= Time.deltaTime;

		if (timer < 0) {


			transform.position = Vector3.Lerp (pointC.position, pointD.position, percent);


			percent = percent + Time.deltaTime / movementSpeed;



		}

			if (percent > 1) {
			Destroy(gameObject);


				}

	}
}