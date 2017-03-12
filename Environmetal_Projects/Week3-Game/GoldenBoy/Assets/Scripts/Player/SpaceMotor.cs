using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpaceMotor : MonoBehaviour {


	private  float speed = 0f;
	private float idleSpeed = 0f;
	public float playerSpeed = 5f;

	public GameObject bullet;
	public Transform spawnPoint;








	// Use this for initialization
	void Start ()
	{


	


		playerSpeed = 5f;




	}


	void Update ()
	{





		if (Input.GetKey (KeyCode.LeftArrow) || Input.GetKey (KeyCode.A)) {
			Movement (Vector3.left);

		}

		if (Input.GetKey (KeyCode.RightArrow) || Input.GetKey (KeyCode.D)) {

			Movement (Vector3.right);

		}



		if (Input.GetKey (KeyCode.UpArrow) || Input.GetKey (KeyCode.W)) { // move up.
			Movement (Vector3.up);


		}

		if (Input.GetKey (KeyCode.DownArrow) || Input.GetKey (KeyCode.S)) { // move down.
			Movement (Vector3.down);

		}


		if (Input.GetKeyUp (KeyCode.UpArrow) || Input.GetKeyUp (KeyCode.DownArrow) || Input.GetKeyUp (KeyCode.W) || Input.GetKeyUp (KeyCode.S)) { // push speed.


			speed = idleSpeed;
		}



		if (Input.GetKeyDown (KeyCode.Space)) {


			Instantiate (bullet, spawnPoint.transform.position, Quaternion.identity);

		}




	}




	void Movement (Vector3 dir)
	{ // Player Movement.
		speed = playerSpeed;
		transform.position += dir.normalized * speed * Time.deltaTime;

	}













	}






