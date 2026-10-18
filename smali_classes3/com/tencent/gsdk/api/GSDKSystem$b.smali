.class Lcom/tencent/gsdk/api/GSDKSystem$b;
.super Ljava/lang/Object;
.source "GSDKSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gsdk/api/GSDKSystem;->a(Landroid/content/Context;Ljava/lang/String;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/tencent/gsdk/api/GSDKSystem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/gsdk/api/GSDKSystem$b$a;

    invoke-direct {v0, p0}, Lcom/tencent/gsdk/api/GSDKSystem$b$a;-><init>(Lcom/tencent/gsdk/api/GSDKSystem$b;)V

    invoke-static {v0}, Lcom/tencent/gsdk/m0;->a(Lcom/tencent/gsdk/m0$b;)V

    return-void
.end method
