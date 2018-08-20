import jenkins.model.*
  
int coreCount = Runtime.getRuntime().availableProcessors();

Jenkins.instance.setNumExecutors(coreCount)
