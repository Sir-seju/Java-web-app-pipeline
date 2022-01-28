package myjavaproject.javajenkinsgit;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/")
@RestController
public class HelloController {
    @GetMapping
    public String hello() {
        return "<h1>Hello, SUGAR! Have a great weekend!</h1>";
    }
}
