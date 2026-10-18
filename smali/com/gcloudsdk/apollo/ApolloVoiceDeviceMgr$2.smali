.class final Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr$2;
.super Ljava/lang/Object;
.source "ApolloVoiceDeviceMgr.java"

# interfaces
.implements Lcom/gcloudsdk/apollo/apollovoice/httpclient/AudioDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onStatus(ILjava/lang/String;)V
    .locals 2

    const-string v0, "--mAudioStatusEvent---:"

    monitor-enter p0

    .line 745
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcloudsdk/apollo/ApolloVoiceLog;->LogI(Ljava/lang/String;)V

    .line 746
    invoke-static {p1, p2}, Lcom/gcloudsdk/apollo/ApolloVoiceEngine;->OnEvent(ILjava/lang/String;)V

    .line 747
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$800()Lcom/gcloudsdk/gcloud/voice/IGCloudVoiceNotify;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 748
    invoke-static {}, Lcom/gcloudsdk/apollo/ApolloVoiceDeviceMgr;->access$800()Lcom/gcloudsdk/gcloud/voice/IGCloudVoiceNotify;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/gcloudsdk/gcloud/voice/IGCloudVoiceNotify;->OnEvent(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
