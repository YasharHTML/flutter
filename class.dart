export './class.dart';
class Builder{
    String endpoints;
    Builder({this.endpoints = "/"});
    Builder addOne(String endpoint){
        var x = this.endpoints;  
        x += endpoint + "/";
        return Builder(endpoints: x);
    }

    Builder addMany(List<String> x){
        String t = this.endpoints;
        x.forEach((endpoint){
            t += endpoint + "/";
        });
        return Builder(endpoints: t);
    }

    Builder popBack(){
        var x = this.endpoints.substring(0, this.endpoints.lastIndexOf("/"));
        x = x.substring(0, x.lastIndexOf("/")) + "/";
        return Builder(endpoints: x);
    }

    Builder insertAfter(String t, String endpoint) {
        var s = this.endpoints.substring(0, this.endpoints.indexOf(t) + t.length) + "/" + endpoint + this.endpoints.substring(this.endpoints.indexOf(t) + t.length, this.endpoints.length);
        return Builder(endpoints: s);
    }

    Builder remove(String t) {
        var s = this.endpoints.substring(0, this.endpoints.indexOf(t)) + this.endpoints.substring(this.endpoints.indexOf(t) + t.length + 1, this.endpoints.length);
        return Builder(endpoints: s);
    }

    Builder popFront(){
        this.endpoints = this.endpoints.substring(1, this.endpoints.length);
        var x = "/" + this.endpoints.substring(this.endpoints.indexOf("/") + 1, this.endpoints.length);
        return Builder(endpoints: x);
    }

    String build(){
        return endpoints;
    }
}
