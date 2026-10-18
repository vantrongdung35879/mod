.class public Lcom/tencent/qimei/sdk/S/DataFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private spreadData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/qimei/sdk/S/SpreadValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/sdk/S/DataFormatter;->spreadData:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/sdk/S/DataFormatter;->spreadData:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tencent/qimei/sdk/S/DataFormatter;->spreadData:Ljava/util/HashMap;

    return-void
.end method
