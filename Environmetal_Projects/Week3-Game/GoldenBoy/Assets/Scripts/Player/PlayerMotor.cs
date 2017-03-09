using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMotor : MonoBehaviour {


	public float moveSpeed;
	public float speedMultiplier;

	public float speedIncreaseMilestone;
	private float speedMilestoneCount;

	public float jumpForce;
	public float jumpTime;
	private float jumpTimeCounter;

	public bool grounded;
	public LayerMask whatIsGround;
	public Transform groundCheck;
	public float groundCheckRadius;

	private Rigidbody2D RB2D;
	private Animator anim;





	void Start () {


		RB2D = GetComponent<Rigidbody2D> ();
		anim = GetComponent<Animator> ();
		jumpTimeCounter = jumpTime;
		speedMilestoneCount = speedIncreaseMilestone;
		
	}
	

	void Update () {

	
		 
		grounded = Physics2D.OverlapCircle(groundCheck.position,groundCheckRadius,whatIsGround);

		if (transform.position.x > speedMilestoneCount) {

			speedMilestoneCount += speedIncreaseMilestone;
			speedIncreaseMilestone = speedIncreaseMilestone * speedMultiplier;
			moveSpeed = moveSpeed * speedMultiplier;
		}

		RB2D.velocity = new Vector2 (moveSpeed, RB2D.velocity.y);


		if (Input.GetKeyDown(KeyCode.Space) || Input.GetMouseButtonDown(0)) {

			if (grounded) {
				RB2D.velocity = new Vector2 (RB2D.velocity.x, jumpForce);
			}
		}

		if  (Input.GetKey(KeyCode.Space) || Input.GetMouseButton(0)) {

			if (jumpTimeCounter > 0) {

				RB2D.velocity = new Vector2 (RB2D.velocity.x, jumpForce);
				jumpTimeCounter -= Time.deltaTime;
			}
		}

		if (Input.GetKeyUp(KeyCode.Space) || Input.GetMouseButtonUp(0)) {

			jumpTimeCounter = 0; 
		}

		if (grounded) {

			jumpTimeCounter = jumpTime;
		}

		anim.SetFloat ("Speed", RB2D.velocity.x);
		anim.SetBool ("Grounded", grounded);
	}
}
