.class public final synthetic Lco/datadome/sdk/i$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lco/datadome/sdk/i;


# direct methods
.method public synthetic constructor <init>(Lco/datadome/sdk/i;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/datadome/sdk/i$$ExternalSyntheticLambda0;->f$0:Lco/datadome/sdk/i;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lco/datadome/sdk/i$$ExternalSyntheticLambda0;->f$0:Lco/datadome/sdk/i;

    invoke-static {v0}, Lco/datadome/sdk/i;->$r8$lambda$4KXW_E1qQSKal5D8pqWyQCej2Z8(Lco/datadome/sdk/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
