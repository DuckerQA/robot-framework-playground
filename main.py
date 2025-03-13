import os
import subprocess

def run_tests():
    test_folder = "test_cases"
    results_folder = "results"

    if os.path.exists(results_folder):
        for file in os.listdir(results_folder):
            os.remove(os.path.join(results_folder, file))
    else:
        os.mkdir(results_folder)

    command = f"robot --outputdir {results_folder} {test_folder}"
    subprocess.run(command, shell=True)

if __name__ == "__main__":
    run_tests()
