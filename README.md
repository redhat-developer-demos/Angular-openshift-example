**Angular:**

The Developer Sandbox for Red Hat OpenShift is a free-to-use OpenShift instance for you to experiment with OpenShift for your use cases. Development of dynamic and responsive web applications has evolved into a fundamental requirement. Node.js and Angular stand out as formidable technologies capable of crafting these applications with finesse. Our workflow involves the creation and deployment of applications directly from GitHub onto an OpenShift sandbox environment.

Follow these steps to start your sandbox instance and deploy your Angular app:
1. Create a Sandbox account using [this link](https://developers.redhat.com/developer-sandbox).
2. Once you have the account, click on **Start using your sandbox**.
3. Give it a few seconds, and your sandbox instance will load up.
4. Make sure you're in the Developers perspective in OpenShift sandbox.
5. On the left side menu, click on **+Add**.
6. Select **Import from Git**.
7. Specify your Git repo URL: [https://github.com/redhat-developer-demos/Angular-openshift-example.git](https://github.com/redhat-developer-demos/Angular-openshift-example.git).
8. In the 'Resource Type' field, please choose either **Deployment** or **Serverless Deployment** (default option).
9. Define the port according to your specific requirements.
10. When you click the 'Build Configuration' button, proceed to define the environment variables. Set the Name to **NODE_ENV** and the Value to **development**. (By default, the build occurs in production mode.)
11. Click on **Create**.
12. You will now be directed to the Topology view, and the application will commence deployment. Please allow approximately one minute for the deployment process to complete. While it is in progress, you will have the opportunity to monitor the logs.
13. Once it’s done deploying, you can click on the ***↗*** OpenURL button to see the UI of your React application running on OpenShift.

Congratulations! You've successfully deployed a basic Angular application on the OpenShift sandbox environment, all without the need for intricate configurations. 
