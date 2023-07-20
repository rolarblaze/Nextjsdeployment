# Nextjsdeployment
A deployment flow using Github Actions to deploy a NextJs application on Google Cloud Run

In this demonstration, we will walk through the process of building a Next.js app, containerizing it using Docker, and pushing the container to Google Container Registry. To automate the deployment, we will utilize GitHub Actions, streamlining the entire workflow and making the deployment process more efficient and consistent.



# Step 1: Set Up Google Cloud Run
1. Create a Google Cloud account if you don't have one.
2. navigate to AMI, create a service account
3. assign permission 4 roles to your AMI, the first an editor or owner role,  Cloud Run Service Agent, Service Account User, Storage Admin
4. Enable Google Cloud Run API for the project.
5. Generate a JSON key for the Service Account.

# Step 2: Clone this GitHub Repository
1. Clone this repository to your local machine.
2. In the working directory install node, and download node here  https://nodejs.org/
3. run node -v to verify node is installed successfully
4. run npm install
5. after installing npm, run npm run dev.
   this will start the application on port 3000. copy the link or on your browser type localhost:3000 to veiw the app.

# Step 3: Build the NextJs into a docker image 
1. docker build . -t nextapp:v1
2. docker run -p 3000:3000 -e PORT:3000 nextapp:v1

# Step 4: Commit and Push
1. commit your files to your GitHub repository and navigate to Actions to see if your actions shows green you are good

# Step 5: Verify Deployment
1. After the GitHub Actions workflow completes successfully, visit your Google Cloud Run service URL to see your deployed Nextjs app.
2. configure your security group to allow your application to communicate with the internet

