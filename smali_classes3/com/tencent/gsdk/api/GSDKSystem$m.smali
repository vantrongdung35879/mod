.class Lcom/tencent/gsdk/api/GSDKSystem$m;
.super Ljava/lang/Object;
.source "GSDKSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gsdk/api/GSDKSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/tencent/gsdk/api/GSDKSystem$m;->a:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/tencent/gsdk/api/GSDKSystem$m;->b:J

    return-void
.end method
