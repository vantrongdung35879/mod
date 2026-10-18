.class public Lcom/tencent/gsdk/n$a;
.super Ljava/lang/Object;
.source "CloudConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gsdk/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CloudConfig:",
        "Lcom/tencent/gsdk/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/tencent/gsdk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCloudConfig;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/gsdk/a;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCloudConfig;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/gsdk/n$a;->a:Lcom/tencent/gsdk/a;

    .line 3
    iput p2, p0, Lcom/tencent/gsdk/n$a;->b:I

    .line 4
    iput-object p3, p0, Lcom/tencent/gsdk/n$a;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/tencent/gsdk/n$a;->d:Ljava/lang/String;

    return-void
.end method
