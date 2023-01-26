package com.study.study_springboots.utils;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Component;

@Component
public class CommonUtils {
    public String getUniqueSequence() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString();
    }

    public String getRelativeToAbsolutePath(String relativePath) {
        String relativePathWithSeparator = relativePath.replace("/", File.separator);
        String absolutePath = new File(relativePathWithSeparator).getAbsolutePath();
        return absolutePath;
    }
}
