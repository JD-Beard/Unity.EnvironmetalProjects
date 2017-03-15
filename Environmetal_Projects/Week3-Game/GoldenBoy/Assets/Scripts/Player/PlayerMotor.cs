using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMotor : MonoBehaviour {


	public float moveSpeed;
	private float moveSpeedStore;
	public float speedMultiplier;

	public float speedIncreaseMilestone;
	private float speedIncreaseMilestoneStore;
	private float speedMilestoneCount;
	private float speedMilestoneCountStore;

	public float jumpForce;
	public float jumpTime;
	private float jumpTimeCounter;
	private bool checkJump;

	public bool grounded;
	public LayerMask whatIsGround;
	public Transform groundCheck;
	public float groundCheckRadius;

	private Rigidbody2D RB2D;
	private Animator anim;

	public GameManager theGameManager;
	public PowerManager thePowerManager;
	public SoundManager theSoundManager;

	public AudioSource powerUp;
	public AudioSource jumpSound;

	public GameObject over9000;

	bool hasTurnOn = false;








	void Start () {

		checkJump = true;
		RB2D = GetComponent<Rigidbody2D> ();

		anim = GetComponent<Animator> ();
	
		jumpTimeCounter = jumpTime;

		speedMilestoneCount = speedIncreaseMilestone;

		moveSpeedStore = moveSpeed;
		speedMilestoneCountStore = speedMilestoneCount;
		speedIncreaseMilestoneStore = speedIncreaseMilestone;
		hasTurnOn = false;

	

		
	}
	

	void Update () {


		if (thePowerManager.curPower >= 0.9 && hasTurnOn == false) {
			over9000.gameObject.SetActive (true);
			PlayEffect ();
			hasTurnOn = true;



		
		}

	
		 
		grounded = Physics2D.OverlapCircle(groundCheck.position,groundCheckRadius,whatIsGround);

		if (transform.position.x > speedMilestoneCount) {

			speedMilestoneCount += speedIncreaseMilestone;
			speedIncreaseMilestone = speedIncreaseMilestone * speedMultiplier;
			moveSpeed = moveSpeed * speedMultiplier;
		}

		RB2D.velocity = new Vector2 (moveSpeed, RB2D.velocity.y);


		if (Input.GetKeyDown(KeyCode.Space) || Input.GetMouseButtonDown(0)) {
			jumpSound.Play ();
			if (grounded) {
				
				RB2D.velocity = new Vector2 (RB2D.velocity.x, jumpForce);
				checkJump = false;


			}
		}

		if  (Input.GetKey(KeyCode.Space) || Input.GetMouseButton(0) && !checkJump) {

			if (jumpTimeCounter > 0) {

				RB2D.velocity = new Vector2 (RB2D.velocity.x, jumpForce);
				jumpTimeCounter -= Time.deltaTime;
			}
		}

		if (Input.GetKeyUp(KeyCode.Space) || Input.GetMouseButtonUp(0)) {

			jumpTimeCounter = 0; 
			checkJump = true;
		}

		if (grounded) {

			jumpTimeCounter = jumpTime;
		}

		anim.SetFloat ("Speed", RB2D.velocity.x);
		anim.SetBool ("Grounded", grounded);
	}


	void PlayEffect(){

		powerUp.Play ();

	}





	void OnCollisionEnter2D(Collision2D other){

		if (other.collider.CompareTag ("DeathBox")) {

			theSoundManager.PlaySound (1);
			theGameManager.RestartGame ();
			thePowerManager.ResetPower ();
			moveSpeed = moveSpeedStore;
			speedMilestoneCount = speedMilestoneCountStore;
			speedIncreaseMilestone = speedIncreaseMilestoneStore;
			over9000.gameObject.SetActive (false);



		}


	}
}
