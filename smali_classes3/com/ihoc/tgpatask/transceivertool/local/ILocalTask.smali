.class public interface abstract Lcom/ihoc/tgpatask/transceivertool/local/ILocalTask;
.super Ljava/lang/Object;
.source "ILocalTask.java"


# virtual methods
.method public abstract checkParam(Ljava/util/HashMap;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract exceuteLocalTask(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/ihoc/tgpatask/VmpCallback;)I
.end method
