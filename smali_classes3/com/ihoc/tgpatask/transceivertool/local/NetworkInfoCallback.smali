.class public interface abstract Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfoCallback;
.super Ljava/lang/Object;
.source "NetworkInfoCallback.java"


# virtual methods
.method public abstract notifyBandwidth(Ljava/lang/String;)I
.end method

.method public abstract notifyDelayAndRateInfo(Ljava/lang/String;)I
.end method

.method public abstract notifyDelayInfo(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract notifyRateInfo(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)I
.end method
