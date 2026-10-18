.class Lcom/tencent/gsdk/api/GSDKSystem$c;
.super Ljava/lang/Object;
.source "GSDKSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gsdk/api/GSDKSystem;->a(IZLjava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/tencent/gsdk/api/GSDKSystem;IZZLjava/lang/String;Z)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/tencent/gsdk/api/GSDKSystem$c;->a:I

    iput-boolean p3, p0, Lcom/tencent/gsdk/api/GSDKSystem$c;->b:Z

    iput-boolean p4, p0, Lcom/tencent/gsdk/api/GSDKSystem$c;->c:Z

    iput-object p5, p0, Lcom/tencent/gsdk/api/GSDKSystem$c;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/tencent/gsdk/api/GSDKSystem$c;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/tencent/gsdk/api/GSDKSystem$c;->a:I

    iget-boolean v1, p0, Lcom/tencent/gsdk/api/GSDKSystem$c;->b:Z

    iget-boolean v2, p0, Lcom/tencent/gsdk/api/GSDKSystem$c;->c:Z

    iget-object v3, p0, Lcom/tencent/gsdk/api/GSDKSystem$c;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/tencent/gsdk/api/GSDKSystem$c;->e:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/gsdk/m0;->a(IZZLjava/lang/String;Z)V

    return-void
.end method
