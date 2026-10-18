.class public Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine$TaskID;
.super Ljava/lang/Object;
.source "GCloudVoiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskID"
.end annotation


# instance fields
.field public ID:I

.field final synthetic this$0:Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;


# direct methods
.method public constructor <init>(Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine$TaskID;->this$0:Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 71
    iput p1, p0, Lcom/gcloudsdk/gcloud/voice/GCloudVoiceEngine$TaskID;->ID:I

    return-void
.end method
