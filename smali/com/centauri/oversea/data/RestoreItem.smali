.class public Lcom/centauri/oversea/data/RestoreItem;
.super Ljava/lang/Object;
.source "RestoreItem.java"


# instance fields
.field public final channel:Ljava/lang/String;

.field public final restore:Lcom/centauri/oversea/business/CTIBaseRestore;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/centauri/oversea/business/CTIBaseRestore;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 14
    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/centauri/oversea/data/RestoreItem;->channel:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/centauri/oversea/data/RestoreItem;->restore:Lcom/centauri/oversea/business/CTIBaseRestore;

    return-void
.end method
