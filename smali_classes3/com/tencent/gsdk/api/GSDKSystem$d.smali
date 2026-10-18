.class Lcom/tencent/gsdk/api/GSDKSystem$d;
.super Ljava/lang/Object;
.source "GSDKSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gsdk/api/GSDKSystem;->b(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/tencent/gsdk/api/GSDKSystem;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/tencent/gsdk/api/GSDKSystem$d;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem$d;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/tencent/gsdk/m0;->a(Ljava/util/Map;)V

    return-void
.end method
