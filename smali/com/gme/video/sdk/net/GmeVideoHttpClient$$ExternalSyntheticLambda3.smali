.class public final synthetic Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda3;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda3;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->lambda$httpPostRequest$4(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
