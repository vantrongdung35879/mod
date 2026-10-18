.class Lcom/tencent/gsdk/api/GSDKSystem$e;
.super Ljava/lang/Object;
.source "GSDKSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gsdk/api/GSDKSystem;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/gsdk/h0;


# direct methods
.method constructor <init>(Lcom/tencent/gsdk/api/GSDKSystem;Lcom/tencent/gsdk/h0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/tencent/gsdk/api/GSDKSystem$e;->a:Lcom/tencent/gsdk/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem$e;->a:Lcom/tencent/gsdk/h0;

    iget-object v0, v0, Lcom/tencent/gsdk/h0;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gsdk/u0;->c(Ljava/lang/String;)V

    return-void
.end method
