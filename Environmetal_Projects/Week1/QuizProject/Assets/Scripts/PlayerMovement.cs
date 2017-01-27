using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour {


	public float speed;


	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {



		if (Input.GetKey(KeyCode.DownArrow)) {

			MoveDown ();
		}

		if (Input.GetKey(KeyCode.UpArrow)) {

			MoveUp ();
		}


		if (Input.GetKey(KeyCode.RightArrow)) {

			MoveRight ();
		}

		if (Input.GetKey(KeyCode.LeftArrow)) {

			MoveLeft ();
		}


		
	}



	public void MoveUp() {
		transform.Translate(Vector3.up * speed * Time.deltaTime);
	}
	public void MoveDown() {
		transform.Translate(Vector3.down * speed * Time.deltaTime);
	}
	public void MoveLeft() {
		transform.Translate(Vector3.left * speed * Time.deltaTime);
	}
	public void MoveRight() {
		transform.Translate(Vector3.right * speed * Time.deltaTime);
	}
}
