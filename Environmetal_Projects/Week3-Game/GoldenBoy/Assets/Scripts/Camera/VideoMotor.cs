using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

[RequireComponent (typeof(AudioSource))]
public class VideoMotor : MonoBehaviour {


	public MovieTexture movie;
	private Renderer video;
	private float timer = 3f;

	void Start () {


		video = GetComponent<Renderer> ();

		video.material.mainTexture = movie as MovieTexture;


		movie.Play ();

		timer = 3f;
	}
	
	// Update is called once per frame
	void Update () {

		timer -= Time.deltaTime;

		if (timer < 0) {

			SceneManager.LoadScene ("Level02");

		}
		
	}
}
