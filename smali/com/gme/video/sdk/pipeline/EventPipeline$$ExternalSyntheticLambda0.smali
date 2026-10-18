.class public final synthetic Lcom/gme/video/sdk/pipeline/EventPipeline$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gme/video/sdk/pipeline/EventPipeline;


# direct methods
.method public synthetic constructor <init>(Lcom/gme/video/sdk/pipeline/EventPipeline;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gme/video/sdk/pipeline/EventPipeline$$ExternalSyntheticLambda0;->f$0:Lcom/gme/video/sdk/pipeline/EventPipeline;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/gme/video/sdk/pipeline/EventPipeline$$ExternalSyntheticLambda0;->f$0:Lcom/gme/video/sdk/pipeline/EventPipeline;

    invoke-virtual {v0}, Lcom/gme/video/sdk/pipeline/EventPipeline;->lambda$sleep$0$com-gme-video-sdk-pipeline-EventPipeline()V

    return-void
.end method
