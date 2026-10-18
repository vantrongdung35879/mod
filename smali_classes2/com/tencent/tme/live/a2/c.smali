.class public Lcom/tencent/tme/live/a2/c;
.super Lcom/tencent/tme/live/a2/a;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/nio/channels/FileChannel;JJ)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tme/live/a2/a;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    return-void
.end method
