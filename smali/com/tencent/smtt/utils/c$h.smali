.class Lcom/tencent/smtt/utils/c$h;
.super Lcom/tencent/smtt/utils/c$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:J

.field f:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/smtt/utils/c$k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/smtt/utils/c$h;->d:J

    long-to-int v1, v0

    return v1
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/smtt/utils/c$h;->c:J

    return-wide v0
.end method
