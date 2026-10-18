.class public final synthetic Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/Map;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda4;->f$2:Ljava/util/Map;

    iput-wide p4, p0, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda4;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda4;->f$2:Ljava/util/Map;

    iget-wide v3, p0, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda4;->f$3:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->lambda$uploadFileCos$0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method
