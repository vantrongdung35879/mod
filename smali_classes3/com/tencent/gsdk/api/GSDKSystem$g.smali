.class Lcom/tencent/gsdk/api/GSDKSystem$g;
.super Ljava/lang/Object;
.source "GSDKSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gsdk/api/GSDKSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/tencent/gsdk/api/GSDKSystem$g;->a:I

    .line 8
    iput p2, p0, Lcom/tencent/gsdk/api/GSDKSystem$g;->b:I

    .line 9
    iput-boolean p3, p0, Lcom/tencent/gsdk/api/GSDKSystem$g;->c:Z

    .line 10
    iput-object p4, p0, Lcom/tencent/gsdk/api/GSDKSystem$g;->d:Ljava/lang/String;

    return-void
.end method
