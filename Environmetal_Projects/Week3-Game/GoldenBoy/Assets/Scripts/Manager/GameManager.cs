﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour {

	public Transform platformGenerator;
	private Vector3 platformStartPoint;
	public PlayerMotor thePlayer;
	private Vector3 playerStartPoint;



	private PlatformDestroyer[] platformList;

	void Start () {

		platformStartPoint = platformGenerator.position;
		playerStartPoint = thePlayer.transform.position;
		
	}
	

	void Update () {
		
	}


	public void RestartGame(){

		StartCoroutine ("RestartGameCo");

	}

	public IEnumerator RestartGameCo(){
		thePlayer.gameObject.SetActive (false);
		yield return new WaitForSeconds (.5f);

		platformList = FindObjectsOfType<PlatformDestroyer> ();
		for (int i = 0; i < platformList.Length; i++) {

			platformList [i].gameObject.SetActive (false);
		}

		thePlayer.transform.position = playerStartPoint;
		platformGenerator.position = platformStartPoint;
		thePlayer.gameObject.SetActive (true);


	}
}
