.class public final Lcom/tencent/tme/live/n0/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/tencent/tme/live/f0/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xd33

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    aget v0, v0, v2

    const/16 v1, 0x800

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lcom/tencent/tme/live/f0/e;

    invoke-direct {v1, v0, v0}, Lcom/tencent/tme/live/f0/e;-><init>(II)V

    sput-object v1, Lcom/tencent/tme/live/n0/a;->a:Lcom/tencent/tme/live/f0/e;

    return-void
.end method
