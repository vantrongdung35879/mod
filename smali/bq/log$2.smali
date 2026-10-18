.class Lbq/log$2;
.super Lbq/def/log_category_base;
.source "log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbq/log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field protected index:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 122
    invoke-direct {p0}, Lbq/def/log_category_base;-><init>()V

    const-wide/16 v0, 0x0

    .line 123
    iput-wide v0, p0, Lbq/log$2;->index:J

    return-void
.end method
