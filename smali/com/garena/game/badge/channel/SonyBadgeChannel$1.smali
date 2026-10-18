.class Lcom/garena/game/badge/channel/SonyBadgeChannel$1;
.super Landroid/content/AsyncQueryHandler;
.source "SonyBadgeChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/game/badge/channel/SonyBadgeChannel;->executeBadgeByContentProvider(Landroid/content/Context;Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/game/badge/channel/SonyBadgeChannel;


# direct methods
.method constructor <init>(Lcom/garena/game/badge/channel/SonyBadgeChannel;Landroid/content/ContentResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "x0"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/garena/game/badge/channel/SonyBadgeChannel$1;->this$0:Lcom/garena/game/badge/channel/SonyBadgeChannel;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method
