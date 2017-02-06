using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ChangeScene : MonoBehaviour {





	public void ChangeToScene(int SceneToChangeTo){

		SceneManager.LoadSceneAsync (SceneToChangeTo);


	}



	public void ChangeToExit(int SceneToExitTo){

		Application.Quit ();


	}
}
