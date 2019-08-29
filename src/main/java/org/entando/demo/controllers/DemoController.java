package org.entando.demo.controllers;

import org.entando.entando.plugins.jpkiebpm.aps.system.services.kie.KieFormManager;
import org.entando.entando.plugins.jpkiebpm.aps.system.services.kie.model.KieBpmConfig;
import org.entando.entando.web.common.annotation.RestAccessControl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;

@RestController
public class DemoController {

    private final Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    KieFormManager formManager;

    @RestAccessControl(permission = "")
    @RequestMapping(value = "/poste/bpm/{configId:.+}/{containerId:.+}/tasks/{taskId:.+}/complete", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public String completeTask(@PathVariable String configId, @PathVariable String containerId, @PathVariable String taskId) throws IOException {

        try {
            KieBpmConfig config = this.formManager.getKieServerConfigurations().get(configId);
            formManager.completeTask(config, "", containerId, taskId);
        } catch (Exception e) {
            logger.error("Failed to complete task ", e);
        }

        return "success";
    }
}
